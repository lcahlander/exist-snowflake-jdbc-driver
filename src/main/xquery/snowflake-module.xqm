xquery version "3.1";

(:~
 : A very simple example XQuery Library Module implemented
 : in XQuery.
 :)
module namespace snowflake = "https://exist-db.org/exist-db/ns/app/snowflake";

declare function snowflake:say-hello($name as xs:string?) as document-node(element(hello)) {
    document {
        element hello {
            if($name) then
                $name
            else
                "stranger"
        }
    }
};

declare function snowflake:hello-world() as document-node(element(hello)) {
    snowflake:say-hello("world")
};

declare function snowflake:add($a as xs:int, $b as xs:int) as xs:int {
    $a + $b
};
