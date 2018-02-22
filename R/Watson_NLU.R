Watson_NLU <- function(username, password, version = '2017-02-27', features, ...){
    
    # Wrapper for calling IBM Watson Natural language understanding (NLU) API
    # Just does a simple POST command
    # Similar to python library found to IBM NLU API documentation
    # https://www.ibm.com/watson/developercloud/natural-language-understanding/api/v1/
    
    # API endpoint
    default_url <- 'https://gateway.watsonplatform.net/natural-language-understanding/api/v1'
    version_date <- version
    
    full_url <- paste0(default_url,
                       '/analyze?version=',
                       version_date)
    
    # Get additional arguments
    additional_args <- list(...)
    
    # Get main url
    main_url <- full_url
    
    # Create config vector
    config_vec <- c(
        httr::authenticate(username, password),
        httr::add_headers("Content-Type" = "application/json")
    )
    
    # Create data list (for body)
    data <- list(
        features = features
    )
    
    # Append additional arguments to data
    data <- c(data, additional_args)
    
    # Get response
    response <- httr::POST(url = main_url, config = config_vec, body = data, encode = 'json')
    
    # pull out response 
    signal <- httr::content(response)
    
    return(signal)
    
}