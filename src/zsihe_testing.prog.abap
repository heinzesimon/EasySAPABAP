*&---------------------------------------------------------------------*
*& Report ZSIHE_TESTING
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSIHE_Testing.

*NAME     TEXT
*SO_DEVC  Package
*SO_ROOT  Object Name
*X_AGGR    Aggregations (<>--)
*X_ASOS    Associations (-->)
*X_ATTR    List Attributes
*X_CONS    Display Constants
*X_EXCEP  Exceptions (<<throws>>)
*X_FRND   Friends
*X_FUGR    Analyze Function Groups
*X_LOCL    Analyze Local Objects
*X_METH    List Methods
*X_PACKS  Package Member (~)
*X_PRIV    Private Member  (-)
*X_PROG    Analyze Program
*X_PROT    Protected Member (#)
*X_STRUCT  Structures  (<<data Type>>)
*X_USES    Dependency (<<uses>>)

*SYMBOL  TEXT
*007  Primary Selection Set
*008  Statements UML Scanner
*009  UML Representation Options
*SC1  Selection of Dev. Objects to Be Evaluated
*SC2  Options for Display of UML Class Diagrams
*SC7  Work Instructions for UML Scanner
*P01  PlantUML

TABLES sscrfields.                          " Selection Screen Fields

SELECTION-SCREEN FUNCTION KEY 1.                     "#EC CI_USE_WANTED
SELECTION-SCREEN FUNCTION KEY 2.                     "#EC CI_USE_WANTED

DATA gs_tadir TYPE tadir.
" ----------------------------------------------------------------------------------------------------------------------------------- *
" selection screen definition
SELECTION-SCREEN: BEGIN OF TABBED BLOCK mytab FOR 18 LINES,
TAB (40) button1 USER-COMMAND push1 DEFAULT SCREEN 510,
TAB (40) button2 USER-COMMAND push2 DEFAULT SCREEN 520,
TAB (40) button3 USER-COMMAND push3 DEFAULT SCREEN 530,
END OF BLOCK mytab.

" primary selection criteria
SELECTION-SCREEN BEGIN OF SCREEN 510 AS SUBSCREEN.
  SELECTION-SCREEN BEGIN OF BLOCK s1 WITH FRAME TITLE TEXT-sc1.
    SELECT-OPTIONS: so_root  FOR gs_tadir-obj_name NO INTERVALS,  " root objects
                    so_devc  FOR gs_tadir-devclass NO INTERVALS.  " root objects dev-class
  SELECTION-SCREEN END OF BLOCK s1.
SELECTION-SCREEN END OF SCREEN 510.
