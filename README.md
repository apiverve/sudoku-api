# [Sudoku Generator API](https://apiverve.com/marketplace/sudoku?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Sudoku Generator creates 9x9 Sudoku puzzle grids across multiple difficulty settings, with empty cells marked as zeros. Paid plans add the full solution grid for validation or hints.

The Sudoku Generator API provides a simple, reliable way to integrate sudoku generator functionality into your applications. Built for developers who need production-ready sudoku generator capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/sudoku?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/sudoku?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/sudoku)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.SudokuGenerator)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-sudoku/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_sudoku)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/sudoku)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_sudoku)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callSudokuGeneratorAPI() {
    try {
        const params = new URLSearchParams({
            difficulty: 'medium'
        });

        const response = await fetch(`https://api.apiverve.com/v1/sudoku?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callSudokuGeneratorAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/sudoku?difficulty=medium" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/sudoku
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/sudoku) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.SudokuGenerator
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.SudokuGenerator) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-sudoku
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-sudoku/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_sudoku
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_sudoku) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/sudoku
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/sudoku) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_sudoku
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_sudoku) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:sudoku-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/sudoku-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Sudoku Generator API](https://apiverve.com/marketplace/sudoku?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/sudoku](https://docs.apiverve.com/ref/sudoku)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Sudoku Generator API is commonly used for:

- **Web Applications** - Add sudoku generator features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with sudoku generator capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Sudoku Generator API:

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

## Support & Community

- 🏠 **API Home**: [Sudoku Generator API](https://apiverve.com/marketplace/sudoku?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
