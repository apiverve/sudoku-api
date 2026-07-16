SudokuGenerator API
============

Sudoku is a simple tool for generating Sudoku puzzles. It returns a Sudoku puzzle.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a .NET Wrapper for the [SudokuGenerator API](https://apiverve.com/marketplace/sudoku?utm_source=nuget&utm_medium=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.SudokuGenerator
```

Using the Package Manager:
```
nuget install APIVerve.API.SudokuGenerator
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.SudokuGenerator
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.SudokuGenerator"
5. Click on the APIVerve.API.SudokuGenerator package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the sudoku API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.SudokuGenerator;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new SudokuGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new SudokuGeneratorQueryOptions {
    Difficulty = "medium"
};

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The SudokuGenerator API documentation is found here: [https://docs.apiverve.com/ref/sudoku](https://docs.apiverve.com/ref/sudoku?utm_source=nuget&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
SudokuGenerator API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new SudokuGeneratorAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.SudokuGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new SudokuGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new SudokuGeneratorQueryOptions {
    Difficulty = "medium"
};

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.SudokuGenerator;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new SudokuGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new SudokuGeneratorQueryOptions {
    Difficulty = "medium"
};

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.SudokuGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new SudokuGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new SudokuGeneratorQueryOptions {
    Difficulty = "medium"
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.SudokuGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new SudokuGeneratorAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new SudokuGeneratorQueryOptions {
    Difficulty = "medium"
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new SudokuGeneratorAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new SudokuGeneratorQueryOptions {
    Difficulty = "medium"
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new SudokuGeneratorAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new SudokuGeneratorQueryOptions {
    Difficulty = "medium"
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new SudokuGeneratorAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new SudokuGeneratorQueryOptions {
    Difficulty = "medium"
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new SudokuGeneratorQueryOptions {
    Difficulty = "medium"
};

using (var apiClient = new SudokuGeneratorAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
