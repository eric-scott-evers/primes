-module(art_test).
-compile(export_all).

start()->
 
%  need to complile art.erl first with c(art) 
compile:file(art),

art:init(), 
%   {atomic,ok}
 
art:insert(1,"Dali","The Ghost of Vermeer"),
%   {atomic,ok}
  
A = art:select(1),
AA = "art:select(1)",

%   "Dali" "The Ghost of Vermeer"
%   ok
  
art:insert(2,"Dali","The Persistence of Memory"),
%   {atomic,ok}
   
B  = art:select(2),
BB = "art:select(2)",

%   "Dali" "The Persistence of Memory"
%   ok
   
C  = art:select(1),
CC = "art:select(1)",

%   "Dali" "The Ghost of Vermeer"
%   ok 
 
art:insert(3,"Vermeer", "Girl With Pearl Earring"),
%   {atomic,ok}
 
D  = art:select_some("Dali"),
DD = "art:select_some(\"Dali\")",

%   [{painting,1,"Dali","The Ghost of Vermeer"},
%   {painting,2,"Dali","The Persistence of Memory"}]
 
E  = art:select_all(),
EE = "art:select_all()",
 
%   {atomic,[{painting,1,"Dali","The Ghost of Vermeer"},
%               {painting,2,"Dali","The Persistence of Memory"},
%               {painting,3,"Vermeer","Girl With Pearl Earring"}]}

%---to run a new session after restarting erlang---
 
% art:init(),
%   {aborted,{already_exists,painting}}

F  = art:select_search("Vermeer"),
FF = "art:select_search(\"Vermeer\")",

%      {atomic,[{painting,1,"Dali","The Ghost of Vermeer"},
%               {painting,3,"Vermeer","Girl With Pearl Earring"}]}
 
%  all outputs 
[AA, A, BB, B, CC, C, DD, D, EE, E, FF, F].
