var express = require("express");
var app = express();
var request = require('request');
app.listen(8000, () => {
 console.log("Server running on port 8080");
});

app.get("/total/:country", (req, res, next) => {
    var options = {
        'method': 'GET',
        'url': 'https://api.covid19api.com/total/country/${request.params.country}/status/confirmed',
        'headers': {
        }
      };
      request(options, function (error, response) {
        if (error) throw new Error(error);
        var jsonObj = JSON.parse(response.body)
        res.json("Total Cases as of " + jsonObj[jsonObj.length-1]["Date"].slice(0,10) + ": "+jsonObj[jsonObj.length-1]["Cases"]);
      });
   });
