# Sudoku Generator API

Sudoku is a simple tool for generating Sudoku puzzles. It returns a Sudoku puzzle.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)
[![npm version](https://img.shields.io/npm/v/@apiverve/sudoku.svg)](https://www.npmjs.com/package/@apiverve/sudoku)

This is a Javascript Wrapper for the [Sudoku Generator API](https://apiverve.com/marketplace/sudoku?utm_source=npm&utm_medium=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/sudoku
```

Using yarn:
```shell
yarn add @apiverve/sudoku
```

---

## Configuration

Before using the Sudoku Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=readme)

The Sudoku Generator API documentation is found here: [https://docs.apiverve.com/ref/sudoku](https://docs.apiverve.com/ref/sudoku?utm_source=npm&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const sudokuAPI = require('@apiverve/sudoku');
const api = new sudokuAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  difficulty: "medium"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  difficulty: "medium"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  difficulty: "medium"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "puzzle": {
      "grid": "674--3---1---72-9-5----1--4------8-3-1---8--52----61--7-1----8--53-97--19--8-4---",
      "html": "<html><head><title>Sudoku Puzzle</title><style>table {border-collapse: collapse; width: 300px; height: 300px;}td {text-align: center; width: 30px; height: 30px; padding: 0;}input {width: 100%; height: 100%; text-align: center; font-size: 18px; border: none;}</style></head><body><table><tr><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='6' maxlength='1' disabled />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='7' maxlength='1' disabled />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='4' maxlength='1' disabled />                    </td><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='3' maxlength='1' disabled />                    </td><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td></tr><tr><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='1' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='7' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='2' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='9' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td></tr><tr><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='5' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='1' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                      <input type='text' value='4' maxlength='1' disabled />                    </td></tr><tr><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='8' maxlength='1' disabled />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                      <input type='text' value='3' maxlength='1' disabled />                    </td></tr><tr><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='1' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='8' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                      <input type='text' value='5' maxlength='1' disabled />                    </td></tr><tr><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='2' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='6' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='1' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td></tr><tr><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='7' maxlength='1' disabled />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='1' maxlength='1' disabled />                    </td><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='8' maxlength='1' disabled />                    </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td></tr><tr><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='5' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='3' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='9' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='7' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                      <input type='text' value='1' maxlength='1' disabled />                    </td></tr><tr><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='9' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='8' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='4' maxlength='1' disabled />                    </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 1px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                      <input type='text' value='' maxlength='1'  />                    </td></tr></table></body></html>",
      "image": {
        "imageName": "d1b59df4-7ab2-474e-b269-e34ce212b469_puzzle.png",
        "format": ".png",
        "downloadURL": "https://storage.googleapis.com/apiverve/APIData/sudoku/d1b59df4-7ab2-474e-b269-e34ce212b469_puzzle.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010586&Signature=jFaR0KjqZtGbKvnH7wPVVfz88z4mRT9bgs54W%2BEyU%2B%2B4%2BbXZdqK8wafALwJpk89vRjhsTpaX6huE8SDkDl6U6VY452LDEnv1kOT6SASgttUbUVnnfoyJFfaEQIreHun6Y0dCAIA8RpJ27kBGorHAN9cgvA3N4wLTrzKGXd%2B3ULxbYivUNIjxgXFqeOCNeHhYHOU46i6voYYC7VYaibkpqwwD%2BYw0jQOXzVevwEVmP%2BhfQ0B1mToPnsyzS8Bo2b8Vtyh78YLh3u30KPKoio1%2FbNZ1KYI6hUpZ9UlnQFAN91Wg%2BFVlG4clYhGgwcPsjsq5xUUsdty4JmYYVocturuXrQ%3D%3D",
        "expires": 1766010586784
      }
    },
    "solution": {
      "grid": "674953218138472596592681734465129873319748625287536149741365982853297461926814357",
      "html": "<html><head><title>Sudoku Solution</title><style>table {border-collapse: collapse; width: 300px; height: 300px;}td {text-align: center; width: 30px; height: 30px; padding: 0;}input {width: 100%; height: 100%; text-align: center; font-size: 18px; border: none;}</style></head><body><table><tr><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='6' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='7' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='4' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='9' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='5' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='3' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='2' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='1' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                        <input type='text' value='8' maxlength='1' disabled />                      </td></tr><tr><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='1' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='3' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='8' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='4' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='7' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='2' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='5' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='9' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                        <input type='text' value='6' maxlength='1' disabled />                      </td></tr><tr><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='5' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='9' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='2' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='6' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='8' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='1' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='7' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='3' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                        <input type='text' value='4' maxlength='1' disabled />                      </td></tr><tr><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='4' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='6' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='5' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='1' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='2' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='9' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='8' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='7' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                        <input type='text' value='3' maxlength='1' disabled />                      </td></tr><tr><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='3' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='1' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='9' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='7' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='4' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='8' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='6' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='2' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                        <input type='text' value='5' maxlength='1' disabled />                      </td></tr><tr><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='2' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='8' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='7' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='5' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='3' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='6' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='1' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='4' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                        <input type='text' value='9' maxlength='1' disabled />                      </td></tr><tr><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='7' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='4' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='1' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='3' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='6' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='5' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='9' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='8' maxlength='1' disabled />                      </td><td style='border-top: 3px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                        <input type='text' value='2' maxlength='1' disabled />                      </td></tr><tr><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='8' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='5' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='3' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='2' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='9' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='7' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='4' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='6' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                        <input type='text' value='1' maxlength='1' disabled />                      </td></tr><tr><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='9' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='2' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='6' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='8' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='1' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='4' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 3px solid #000;'>                        <input type='text' value='3' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 1px solid #000;'>                        <input type='text' value='5' maxlength='1' disabled />                      </td><td style='border-top: 1px solid #000;border-bottom: 3px solid #000;border-left: 1px solid #000;border-right: 3px solid #000;'>                        <input type='text' value='7' maxlength='1' disabled />                      </td></tr></table></body></html>",
      "image": {
        "imageName": "d0a6a5a0-c0e3-44cb-8417-e6590f793a7c_solution.png",
        "format": ".png",
        "downloadURL": "https://storage.googleapis.com/apiverve/APIData/sudoku/d0a6a5a0-c0e3-44cb-8417-e6590f793a7c_solution.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010586&Signature=LVChpKLTdpScYP%2F%2FmDSgy9wp%2FECkftQIjWK%2FRZ8dtUjv%2BchJNL5u43Rwkwoh8y7%2FurdHnOUFookVLNJp6EeIMlhHsh9e%2BF5kWaVbZwPfzvVwVWWScoL%2FDx9c6wXm8svbqTb6tXgun8IPaeyt80xTFtg2swAphkB4KS00H5z4Te2O2RL%2F2Op%2BVZu7eVEpQUmTcZ1kR0Nahm5ueeIIPWvUIetV5N5%2FAnzGi5RvyFx0oFIJjPj9zSfi0jPxMbYSUIwF4ZQwyq5e9B%2BeCnX8atCyCs8UN2Sc1ZkFC0BA0ya5t%2F5AoxkdJWeMwMIo%2BcY7jk5anJShVhu9UT6m5bIpSaKdUA%3D%3D",
        "expires": 1766010586850
      }
    },
    "difficulty": "medium"
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=npm&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
