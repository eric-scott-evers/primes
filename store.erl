-module(store).
-compile(export_all).
-include_lib("stdlib/include/qlc.hrl"). 
 
-record(prime, {index, pid}).
  
init() ->
    mnesia:create_schema([node()]),
    mnesia:start(),
    mnesia:create_table(prime,
        [ {disc_copies, [node()] },
             {attributes,      
                record_info(fields, prime)} ]).
 
insert( Index, Pid) ->
    Fun = fun() ->
         mnesia:write(
           #prime { index=Index,
                   pid=Pid   } )
               end,
         mnesia:transaction(Fun).
  
select( Index) ->
    Fun = 
        fun() ->
            mnesia:read({prime, Index})
        end,
    {atomic, [Row]}=mnesia:transaction(Fun),
    io:format(" ~p ~n ", [Row#prime.pid ] ).

select_some( Pid) ->
    Fun = 
        fun() ->
            mnesia:match_object({prime, '_', Pid } )
        end,
    {atomic, Results} = mnesia:transaction( Fun),
    Results.
 
select_all() -> 
    mnesia:transaction( 
    fun() ->
        qlc:eval( qlc:q(
            [ X || X <- mnesia:table(prime) ] 
        )) 
    end ).
  

    
