# SCarvingTestGenerator
Test Generator for Pharo

## Installation 
To load the SCarvingTestGenerator package into the Pharo image:

```Smalltalk
Metacello new
 baseline:'SCarvingTestGenerator';
 repository: 'github://OBJECTSEMANTICS//SCarvingTestGenerator:master/src';
 load.
```

## Note:
To generate the tests, type:

```SCTGProof new generateTestSCTGAddition.```

and to generate Roassal's tests, type:

 ```SCTGProof new generateTestSCTGRoassal.```
