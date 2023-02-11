*** Variables ***
# String
${string}    Hello, world!
${integer}    ${123}
${float}    ${123.45}
${boolean}    True
@{list}    [item1, item2, item3]
@{dictionary}    {key1: value1, key2: value2, key3: value3}
${none}    None

*** Test Cases ***
TC001-Print Datatype
    ${string type}=    Evaluate    type($string)
    ${integer type}=    Evaluate    type($integer)
    ${float type}=    Evaluate    type($float)
    ${boolean type}=    Evaluate    type($boolean)
    ${list type}=    Evaluate    type($list)
    ${dic type}=    Evaluate    type($dictionary)
    ${none type}=    Evaluate    type($none)
    Log    The data type of ${string} is: ${string type}
    Log    The data type of ${integer} is: ${integer type}
    Log    The data type of ${float} is: ${float type}
    Log    The data type of ${boolean} is: ${boolean type}
    Log    The data type of ${list} is: ${list type}
    Log    The data type of ${dictionary} is: ${dic type}
    Log    The data type of ${none} is: ${none type}