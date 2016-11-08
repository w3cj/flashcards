#! /bin/bash

cd /usr/local/bin
wget https://github.com/berto/flashcards/releases/download/0.0.1/flashcards -O flashcards
chmod +x flashcards

if [ ! -f $HOME/.flashcards.json ]; then
  echo "{
    \"flashcards\": [
      {
        \"name\": \"HTTP\",
        \"definition\": \"HTTP is short for HyperText Transfer Protocol. HTTP is the underlying protocol used by the World Wide Web and this protocol defines how messages are formatted and transmitted, and what actions Web servers and browsers should take in response to various commands.\"
      },
      {
        \"name\": \"HTML\",
        \"definition\": \"HyperText Markup Language (HTML) is the standard markup language for creating web pages and web applications. With Cascading Style Sheets (CSS), and JavaScript, it forms a triad of cornerstone technologies for the World Wide Web.\"
      },
      {
        \"name\": \"CSS\",
        \"definition\": \"Cascading Style Sheets (CSS) is a style sheet language used for describing the presentation of a document written in a markup language.\"
      },
      {
        \"name\": \"jQuery\",
        \"definition\": \"A fast, concise, library that simplifies how to traverse HTML documents, handle events, perform animations, and AJAX.\"
      }
    ]
  }" > $HOME/.flashcards.json
fi
