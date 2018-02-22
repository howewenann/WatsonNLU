\name{Watson_NLU}
\alias{Watson_NLU}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A Wrapper for IBM Watson NLU API
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Watson_NLU(username, password, version = '2017-02-27', features, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{
character string: Username obtained from creating an instance of NLU on IBM Cloud.
}
  \item{password}{
character string: Password obtained from creating an instance of NLU on IBM Cloud.
}
  \item{version}{
character string: Fixed to be '2017-02-27' Unless IBM updates the version.
}
  \item{features}{
Lists / nested lists of features to be passed into POST. (See Examples)
}
  \item{\dots}{
Inputs / additional options to be passed into POST. In particular, input formats include raw text, html and urls. (See Examples)
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Watson_NLU returns a list of elements which was created through parsing the raw JSON output from the API.
}
\references{
https://www.ibm.com/watson/developercloud/natural-language-understanding/api/v1/
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# Get Categories
categories <- Watson_NLU(
    username = 'username', 
    password = 'password', 
    version = '2017-02-27',
    url = 'www.cnn.com',
    features = list(
        entities = list(
            sentiment = T,
            limit = 1
        )
    )
)


# Get Concepts
concepts <- Watson_NLU(
    username = 'username', 
    password = 'password', 
    version = '2017-02-27',
    url = 'www.ibm.com',
    features = list(
        concepts = list(
            limit = 1
        )
    )
)


# Get Emotions
emotions <- Watson_NLU(
    username = 'username', 
    password = 'password', 
    version = '2017-02-27',
    html=" \
    <html> \
      <head><title>Fruits</title></head> \
      <body> \
        <h1>Apples and Oranges</h1> \
        <p>I love apples! I don't like oranges.</p> \
      </body> \
    </html>",
    features = list(
        emotion = list(
            targets = list('apples','oranges')
        )
    )
)


# Get Entities
entities <- Watson_NLU(
    username = 'username', 
    password = 'password', 
    version = '2017-02-27',
    url='www.cnn.com',
    features = list(
        entities = list(
            sentiment = T,
            limit = 1
        )
    )
)


# Get Keywords
keywords <- Watson_NLU(
    username = 'username', 
    password = 'password', 
    version = '2017-02-27',
    url='www.ibm.com',
    features = list(
        keywords = list(
            sentiment = T,
            emotion = T,
            limit = 2
        )
    )
)


# Get Metadata
metadata <- Watson_NLU(
    username = 'username', 
    password = 'password', 
    version = '2017-02-27',
    url='www.ibm.com',
    features = list(
        metadata = NULL
    )
)


# Get Relations
relations <- Watson_NLU(
    username = 'username', 
    password = 'password', 
    version = '2017-02-27',
    text = 'Leonardo DiCaprio won Best Actor in a Leading Role \
        for his performance.',
    features = list(
        relations = NULL
    )
)


# Get Semantic Roles
semantic_roles <- Watson_NLU(
    username = 'username', 
    password = 'password', 
    version = '2017-02-27',
    text='IBM has one of the largest workforces in the world',
    features = list(
        semantic_roles = NULL
    )
)


# Get Sentiment
sentiment <- Watson_NLU(
    username = 'username', 
    password = 'password', 
    version = '2017-02-27',
    url='www.wsj.com/news/markets',
    features = list(
        sentiment = list(
            targets = list('bitcoin')
        )
    )
)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
