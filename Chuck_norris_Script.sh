#!/bin/bash
#Chuck Norris Jokes API in URL
API_URL="https://api.chucknorris.io/jokes/random"
#Function to make API requests
get_joke(){
    local joke
    joke=$(curl -s "$API_URL" | jq -r '.value')
    echo "$joke"
}

#Main script
echo "Fetching Chuck Norris Jokes..."
joke=$(get_joke)
#Check if API request was successful
if [ -n "$joke" ]; then
    echo "Chuck Norris Joke: $joke"
else
    echo "Fetching Error Chuck Norris Joke.please try agian."
    curl -v "$API_URL"
fi 
