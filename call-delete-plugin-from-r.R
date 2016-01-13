require(httr)
pathDeleteTestRecord <- "http://localhost/redcap/plugins/plugin_playground/noauth_delete.php"
# httr::url_ok(pathDeleteTestRecord)

#Returns a boolean value if successful
(was_successful <- httr::url_success(pathDeleteTestRecord))

#Returns much more information (that needs to parsed)
(r <- httr::GET(pathDeleteTestRecord))
str(r)
content(r)
