import requests

# Define the URL
url = 'http://localhost:2000/api/v2/packages'



# Install Python 3.12.0
data = [
    {
        "language": "python",
        "version": "3.12.0"
    },
    {
        "language": "node",
        "version": "20.11.1"
    },
    {
        "language": "java",
        "version": "15.0.2"
    },
    {
        "language": "mono",
        "version": "6.12.0"
    }
]

for _ in data:
    try:
        response = requests.post(url, json=_)
        print(response.json())
        # Raise an HTTPError if the response status code is not 200
        response.raise_for_status()
    except requests.exceptions.HTTPError as http_err:
        print(f'HTTP error occurred: {http_err}')
    except Exception as err:
        print(f"An error occurred: {err}")