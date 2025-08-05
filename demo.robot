*** Settings ***
Library     Collections
Resource    resource/Keywords.robot


*** Test Cases ***
Demo vs code ide hello world
    [Documentation]    A simple hello world test to verify basic Robot Framework functionality
    ${name} =    Set Variable    QA Hive
    Log    Hello world ${name}
    Log    Test completed successfully
    Should Be Equal    ${name}    QA Hive    Name variable should be set correctly

Test Hello Keyword
    [Documentation]    Test the reusable Say Hello keyword
    ${greeting} =    Say Hello
    Should Be Equal    ${greeting}    Hello World!
    ${custom_greeting} =    Say Hello    Robot Framework
    Should Be Equal    ${custom_greeting}    Hello Robot Framework!
