-module(store_test).
-compile(export_all).

start()->
 
%  need to complile first  
compile:file(store),

store:init(), 
%   {atomic,ok}
 
store:insert(2, self() ),
%   {atomic,ok}
  
A  = store:select(2),
AA = "store:select(2)",

%   ok   
  
store:insert(3, self() ),
%   {atomic,ok}
   
B  = store:select(3),
BB = "store:select(3)",

%   ok
   
C  = store:select(2),
CC = "store:select(2)",

%   --- ok 
 
store:insert(5, self() ),

%   ok 
 
E  = store:select_all(),
EE = "store:select_all()",
 
%   --- ok 
 
%  all outputs 
[AA, A, BB, B, CC, C, EE, E ].
