CREATE TABLE CORE (
    coreid INTEGER PRIMARY KEY,
    core text,
    coredef text);

CREATE INDEX coredef_index ON CORE(coredef);

CREATE TABLE PLATFORM (
    platformid INTEGER PRIMARY KEY,
    platform text );

CREATE INDEX platform_index ON PLATFORM(platform);

CREATE TABLE COMPILERKIND (
    compilerkindid INTEGER PRIMARY KEY, 
    compiler text);

CREATE INDEX compilerkind_index ON COMPILERKIND(compiler);

CREATE TABLE COMPILER (
    compilerid INTEGER PRIMARY KEY,
    compilerkindid INTEGER ,
    version text,
    testdateid INTEGER,
    FOREIGN KEY(compilerkindid) REFERENCES COMPILERKIND(compilerkindid),
    FOREIGN KEY(testdateid) REFERENCES TESTDATE(testdateid)
    );

CREATE INDEX compiler_index ON COMPILER(compilerkindid,version);
CREATE INDEX compiler_date_index ON COMPILER(testdateid);
CREATE INDEX compiler_all_index ON COMPILER(compilerkindid,version,testdateid);

CREATE TABLE RUN (
    runid INTEGER PRIMARY KEY,
    date text
    );

CREATE TABLE TYPE (
    typeid INTEGER PRIMARY KEY,
    type text );

CREATE INDEX type_index ON TYPE(type);

CREATE TABLE CATEGORY (
    categoryid INTEGER PRIMARY KEY,
    category text);

CREATE INDEX category_index ON CATEGORY(category);

CREATE TABLE TESTNAME (
    testnameid INTEGER PRIMARY KEY,
    name text);

CREATE INDEX testname_index ON TESTNAME(name);

CREATE TABLE TESTDATE (
    testdateid INTEGER PRIMARY KEY,
    date text);

CREATE INDEX testdate_index ON TESTDATE(date);

CREATE TABLE CONFIG (
    configid INTEGER PRIMARY KEY,
    compilerid INTEGER,
    platformid INTEGER,
    coreid INTEGER,
    testdateid INTEGER,
    FOREIGN KEY(compilerid) REFERENCES COMPILER(compilerid),
    FOREIGN KEY(platformid) REFERENCES PLATFORM(platformid),
    FOREIGN KEY(coreid) REFERENCES CORE(coreid)
    FOREIGN KEY(testdateid) REFERENCES TESTDATE(testdateid)
);

INSERT INTO TYPE VALUES(1, "q7");
INSERT INTO TYPE VALUES(2, "q15");
INSERT INTO TYPE VALUES(3, "q31");
INSERT INTO TYPE VALUES(4, "f16");
INSERT INTO TYPE VALUES(5, "f32");
INSERT INTO TYPE VALUES(6, "f64");
INSERT INTO TYPE VALUES(7, "s8");
INSERT INTO TYPE VALUES(8, "u8");
INSERT INTO TYPE VALUES(9, "s16");
INSERT INTO TYPE VALUES(10,"u16");
INSERT INTO TYPE VALUES(11,"s32");
INSERT INTO TYPE VALUES(12,"u32");
INSERT INTO TYPE VALUES(13,"s64");
INSERT INTO TYPE VALUES(14,"u64");

INSERT INTO COMPILERKIND VALUES(1,"AC6");
INSERT INTO COMPILERKIND VALUES(2,"GCC");


INSERT INTO CORE VALUES(1,"m0","ARMCM0");
INSERT INTO CORE VALUES(2,"m0p","ARMCM0P");
INSERT INTO CORE VALUES(3,"m3","ARMCM3");
INSERT INTO CORE VALUES(4,"m4","ARMCM4");
INSERT INTO CORE VALUES(5,"m4f","ARMCM4_FP");
INSERT INTO CORE VALUES(6,"m7d","ARMCM7_DP");
INSERT INTO CORE VALUES(7,"m23","ARMCM23");
INSERT INTO CORE VALUES(8,"m33f","ARMCM33_DSP_FP");
INSERT INTO CORE VALUES(9,"m35f","ARMCM35P_DSP_FP");
INSERT INTO CORE VALUES(10,"a5","ARMCA5");
INSERT INTO CORE VALUES(11,"a7","ARMCA7");
INSERT INTO CORE VALUES(12,"a9","ARMCA9");
INSERT INTO CORE VALUES(13,"a15","ARMCA15");
INSERT INTO CORE VALUES(14,"m55mvef","ARMv81MML_DSP_DP_MVE_FP");


/*
Second item is text as displayed in UI
Third is CONFIGID generated by run script
and different from COREID as was used before
Above we have entries with COREIDs but it is
no more used
*/
INSERT INTO CORE VALUES(15,"m0","M0");
INSERT INTO CORE VALUES(16,"m7","M7");
INSERT INTO CORE VALUES(17,"m33","M33");
INSERT INTO CORE VALUES(18,"m4","M4");
INSERT INTO CORE VALUES(19,"m55 mve","M55");
INSERT INTO CORE VALUES(20,"m55 scalar","M55SCALAR");
INSERT INTO CORE VALUES(21,"r8","R8");
INSERT INTO CORE VALUES(22,"r5","R5");
INSERT INTO CORE VALUES(23,"a32","A32");
INSERT INTO CORE VALUES(24,"r52","R52");
INSERT INTO CORE VALUES(25,"m55 autovec","M55AUTOVEC");


.quit

