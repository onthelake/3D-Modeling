
package org.onebeartoe.modeling.openscad.test.suite;

import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import org.onebeartoe.modeling.openscad.test.suite.utils.DataSetValidator;
import org.onebeartoe.modeling.openscad.test.suite.utils.OpenScadFileFinder;
import org.onebeartoe.modeling.openscad.test.suite.utils.OpenScadTestSuiteService;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

/**
 *
 * @author Roberto Marquez <https://www.youtube.com/user/onebeartoe>
 */
public class OpenScadTestSuiteTest 
{
    private Logger logger;
    
    private RunProfile runProfile;
    
    private OpenScadTestSuiteService testService;
    
    public OpenScadTestSuiteTest() throws Exception
    {
        logger = Logger.getLogger( getClass().getName() );
        
        testService = new OpenScadTestSuiteService();

        runProfile = new RunProfile();

        runProfile.executablePath = "openscad";
//TODO: use the nightly version, since it is the latest version?
//        runProfile.executablePath = "openscad-nightly";

        runProfile.path = "src/main/openscad/basics/";
        
        OpenScadFileFinder openScadFinder = new OpenScadFileFinder();
        Path inpath = FileSystems.getDefault().getPath(runProfile.path);

        runProfile.openscadPaths = openScadFinder.getFiles(inpath);
        runProfile.redirectOpenscad = false;
        
        DataSetValidator inputValidator = new DataSetValidator();
        List<String> missingPngs = inputValidator.validate(runProfile.openscadPaths);
        testService.printValidationResults(missingPngs);

        if (!missingPngs.isEmpty())
        {   
            String message = "The test suite will not continue with missing baseline PNG images.";
            
            System.err.println();
            System.err.println(message);

            throw new Exception(message);
        }

        int count = testService.generateProposedBaselines(runProfile);

        // check if the count is less than 0
        if(count < 0)
        {
            String message = "There was an error with proposed baseline generation.";
            
            throw new Exception(message);
        }        
    }
    
    private String extractTopLevel(String fullPath)
    {   
        // remove the project path
        fullPath = fullPath.replace(runProfile.path, "");
        
        // account for running on MS Windows
        fullPath = fullPath.replace("\\", "/");

        
        int begin = 0;
        int end = fullPath.indexOf("/");

                
        String topLevel = fullPath.substring(begin, end);
        
        return topLevel;
    }    
    
    @DataProvider(name="errorFiles")
    public Object[][] getErrorFiles() throws Exception
    {
        List<String> failedOpenScadFiles = testService.compareImages(runProfile);

        printHighLevelErrorReport(failedOpenScadFiles);
        
        int parameterCount = 1;
        
        List<Object []> rows = failedOpenScadFiles.stream()
                .sorted()
                .map( l -> 
                {
                    Object [] array = new Object[parameterCount];
                    
                    array[0] = l;
                    
                    return array;
                }).collect(Collectors.toList());
        
        Object[][] data = new Object[rows.size()][parameterCount];        
        
        int r = 0;        
        for(Object [] row : rows)
        {
            data[r] = row;
            
            r++;
        }
        
        return data;
    }
    
    private void printHighLevelErrorReport(List<String> failedOpenScadFiles)
    {
        System.err.println("These top level directories have errors:");

        Map<String, Integer> topLevelHits = new HashMap();
        
        failedOpenScadFiles.forEach(f ->
        {
            String topLevelKey = extractTopLevel(f);
            
            Integer count = topLevelHits.get(topLevelKey);
            if(count == null)
            {
                count = 1;
            }
            else
            {
                count += 1;
            }
            
            topLevelHits.put(topLevelKey, count);
        }); 
        
        System.out.println("top level count: " + topLevelHits.size() );
        topLevelHits.forEach( (key, value) ->
        {
            System.out.println(key + ": " + value);
        });
        System.out.println();
    }

    @Test(dataProvider="errorFiles", 
          groups = {"openscad-test-suite"})
    /**
     * Any parameter passed to this test represents a file that failed baseline to 
     * proposed baseline comparison; i.e. all executions of this test are 
     * expected to file.
     */
    public void reportErrors(String comparisonFile) throws Exception
    {        
        String message = "The comparison failed for: " + comparisonFile;
        
        throw new Exception(message);
    }
}