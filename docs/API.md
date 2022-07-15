# BudgeIt | API Documentation

API Version: **1.0**

## Table of Contents

- [Getting Current User Information](#getting-current-user-information)
- [Creating a Budget](#creating-a-budget)

## Getting Current User Information

Sample Request  
Method: `GET`  
Route(s):  
`{{host}}/v1/me`  
Header(s):  
`Authorization: Bearer <token>`  
 
Sample Response  
Status Code: `200`  
Body:
```json
{
    "id": "<user_id>",
    "budgets": [
        {
            "id": "<budget_id>",
            "name": "<budget_name>",
            "currency": "<budget_currency_abbreviation>"
        }
    ],
    "preferredCurrency": "<user_currency_abbreviation>"
}
```

## Creating a Budget

Sample Request  
Method: `POST`  
Route(s):  
`{{host}}/v1/budgets`  
Header(s):  
`Authorization: Bearer <token>`  
Body:
```json
{
    "name": "<budget_name>",
    "currency": "<budget_currency_abbreviation>"
}
```
  
Sample Response  
Status Code: `200`  
Body:
```json
{
    "id": "<budget_id>",
    "name": "<budget_name>",
    "categories": [],
    "currency": "<budget_currency_abbreviation>"
}
```

## Getting a Budget

Sample Request  
Method: `GET`  
Route(s):  
`{{host}}/v1/budgets/{{budget_id}}`  
Header(s):  
`Authorization: Bearer <token>`  
  
Sample Response  
Status Code: `200`  
Body:
```json
{
    "id": "<budget_id>",
    "name": "<budget_name>",
    "currency": "<budget_currency_abbreviation>"
}
```

## Updating a Budget

Sample Request  
Method: `PUT`  
Route(s):  
`{{host}}/v1/budgets/{{budget_id}}`  
Header(s):  
`Authorization: Bearer <token>`  
Body:
```json
{
    "name": "<budget_name>",
    "currency": "<budget_currency_abbreviation>"
}
```
  
Sample Response  
Status Code: `200`  
Body:
```json
{
    "id": "<budget_id>",
    "name": "<budget_name>",
    "currency": "<budget_currency_abbreviation>"
}
```
  
Sample Request  
Method: `PATCH`  
Route(s):  
`{{host}}/v1/budgets/{{budget_id}}`  
Header(s):  
`Authorization: Bearer <token>`  
Body:
```json
{
    "name": "<budget_name>"
}
```
  
Sample Response  
Status Code: `200`  
Body:
```json
{
    "id": "<budget_id>",
    "name": "<budget_name>",
    "currency": "<budget_currency_abbreviation>"
}
```