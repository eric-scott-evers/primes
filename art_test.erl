7> art:init(). 
%   {atomic,ok}
 
%   6> art:insert(1,"Dali","The Ghost of Vermeer").
%   {atomic,ok}
  
%   7> art:select(1).
%   "Dali" "The Ghost of Vermeer"
%   ok
  
%   8> art:insert(2,"Dali","The Persistence of Memory").
%   {atomic,ok}
   
%   9> art:select(2).
%   "Dali" "The Persistence of Memory"
%   ok
   
%   10> art:select(1).
%   "Dali" "The Ghost of Vermeer"
%   ok 
 
%   25> art:insert(3,"Vermeer", "Girl With Pearl Earring").
%   {atomic,ok}
 
%   26> art:select_some("Dali").
%   [{painting,1,"Dali","The Ghost of Vermeer"},
%   {painting,2,"Dali","The Persistence of Memory"}]
 
%   27> art:select_all().
%   {atomic,[{painting,1,"Dali","The Ghost of Vermeer"},
%               {painting,2,"Dali","The Persistence of Memory"},
%               {painting,3,"Vermeer","Girl With Pearl Earring"}]}

%---to run a new session after restarting erlang---
 
%   2> art:init().
%   {aborted,{already_exists,painting}}

%   3> art:select_search("Vermeer").
