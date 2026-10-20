Sudoku Generator API
============

Sudoku Generator creates 9x9 Sudoku puzzle grids across multiple difficulty settings, with empty cells marked as zeros. Paid plans add the full solution grid for validation or hints.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-sudokugenerator.svg)](https://pypi.org/project/apiverve-sudokugenerator/)

This is a Python wrapper for the [Sudoku Generator API](https://apiverve.com/marketplace/sudoku?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-sudokugenerator
```

Using `pip3`:

```bash
pip3 install apiverve-sudokugenerator
```

---

## Configuration

Before using the Sudoku Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_sudokugenerator.apiClient import SudokuAPIClient

# Initialize the client with your APIVerve API key
api = SudokuAPIClient("[YOUR_API_KEY]")

query = { "difficulty": "medium" }

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Sudoku Generator API documentation is found here: [https://docs.apiverve.com/ref/sudoku](https://docs.apiverve.com/ref/sudoku?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_sudokugenerator.apiClient import SudokuAPIClient

# Initialize the client with your APIVerve API key
api = SudokuAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = { "difficulty": "medium" }
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `SudokuAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_sudokugenerator.apiClient import SudokuAPIClient, SudokuAPIClientError

api = SudokuAPIClient("[YOUR_API_KEY]")

query = { "difficulty": "medium" }

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except SudokuAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_sudokugenerator.apiClient import SudokuAPIClient, SudokuAPIClientError

api = SudokuAPIClient("[YOUR_API_KEY]")

query = { "difficulty": "medium" }

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except SudokuAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_sudokugenerator.apiClient import SudokuAPIClient, SudokuAPIClientError

query = { "difficulty": "medium" }

# Using context manager ensures proper cleanup
with SudokuAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except SudokuAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_sudokugenerator.apiClient import SudokuAPIClient

# Enable debug mode
api = SudokuAPIClient("[YOUR_API_KEY]", debug=True)

query = { "difficulty": "medium" }

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_sudokugenerator.apiClient import SudokuAPIClient

api = SudokuAPIClient("[YOUR_API_KEY]")

query = { "difficulty": "medium" }

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
