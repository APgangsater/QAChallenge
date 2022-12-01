*** Settings ***
Library    SeleniumLibrary
*** Keywords ***

*** Variables ***

*** Test Cases ***
User Adding Item it should display on TO-DO TASKS
    open browser    https://abhigyank.github.io/To-Do-List/     chrome
    maximize browser window
    input text    //input[@type='text']   Test
    click button     //button[@data-upgraded=',MaterialButton']
    click link    //a[@href="#todo"]
    page should contain    Test
    close browser

User Adding multiple Item it should display on TO-DO TASKS
    open browser    https://abhigyank.github.io/To-Do-List/     chrome
    maximize browser window
    input text    //input[@type='text']   Test
    click button     //button[@data-upgraded=',MaterialButton']
    input text    //input[@type='text']   Test1
    click button     //button[@data-upgraded=',MaterialButton']
    click link    //a[@href="#todo"]
    page should contain    Test
    page should contain    Test1
    close browser

User Completed the TO-DO TASKS it should display on COMPLETED
    open browser    https://abhigyank.github.io/To-Do-List/     chrome
    maximize browser window
    input text    //input[@type='text']   Test
    click button     //button[@data-upgraded=',MaterialButton']
    click link    //a[@href="#todo"]
    click element    //span[@id='text-1']
    click link    //a[@href="#completed"]
    page should contain    Test
    close browser

User Completed multiple TO-DO TASKS it should display those tasks on COMPLETED
    open browser    https://abhigyank.github.io/To-Do-List/     chrome
    maximize browser window
    input text    //input[@type='text']   Test
    click button     //button[@data-upgraded=',MaterialButton']
    input text    //input[@type='text']   Test1
    click button     //button[@data-upgraded=',MaterialButton']
    click link    //a[@href="#todo"]
    click element    //span[@id='text-1']
    click element    //span[@id='text-1']
    click link    //a[@href="#completed"]
    page should contain    Test
    page should contain    Test1
    close browser

User wants to delete TO-DO TASKS it should be removed from the TO-DO TASKS
    open browser    https://abhigyank.github.io/To-Do-List/     chrome
    maximize browser window
    input text    //input[@type='text']   Test
    click button     //button[@data-upgraded=',MaterialButton']
    click link    //a[@href="#todo"]
    click element    //button[@id='1']
    page should not contain    Test
    close browser

User wants to delete multiple TO-DO TASKS it should be removed from the TO-DO TASKS
    open browser    https://abhigyank.github.io/To-Do-List/     chrome
    maximize browser window
    input text    //input[@type='text']   Test
    click button     //button[@data-upgraded=',MaterialButton']
    input text    //input[@type='text']   Test1
    click button     //button[@data-upgraded=',MaterialButton']
    click link    //a[@href="#todo"]
    click element    //button[@id='1']
    click element    //button[@id='1']
    page should not contain    Test
    page should not contain    Test1
    close browser

User wants to delete COMPLETED TASKS it should be removed from the COMPLETED TASKS
    open browser    https://abhigyank.github.io/To-Do-List/     chrome
    maximize browser window
    input text    //input[@type='text']   Test
    click button     //button[@data-upgraded=',MaterialButton']
    click link    //a[@href="#todo"]
    click element    //span[@id='text-1']
    click link    //a[@href="#completed"]
    click element    //button[@id='1']
    page should not contain    Test
    close browser

User wants to delete multiple COMPLETED TASKS it should be removed from the COMPLETED TASKS
    open browser    https://abhigyank.github.io/To-Do-List/     chrome
    maximize browser window
    input text    //input[@type='text']   Test
    click button     //button[@data-upgraded=',MaterialButton']
    input text    //input[@type='text']   Test1
    click button     //button[@data-upgraded=',MaterialButton']
    click link    //a[@href="#todo"]
    click element    //span[@id='text-1']
    click element    //span[@id='text-1']
    click link    //a[@href="#completed"]
    click element    //button[@id='1']
    click element    //button[@id='1']
    page should not contain    Test
    page should not contain    Test1
    close browser