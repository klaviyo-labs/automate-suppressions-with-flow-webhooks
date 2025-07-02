# Use Klaviyo flow webhooks to automate suppressions using segments and Klaviyo's APIs

This repository contains code samples used in [Solution Recipe 9: Use Klaviyo flow webhooks to automate suppressions using segments and Klaviyo's APIs](https://www.klaviyo.com/blog/solution-recipe-9-use-klaviyo-flow-webhooks-to-automate-suppressions-using-segments-and-klaviyos-apis). 

Use the Readme below for the context and prerequisites described in the Solution Recipe. For code snippets, navigate directly to the src folder. 

## What you'll learn

How to use webhooks to automatically suppress certain Klaviyo profiles using a segment-triggered flow and Klaviyo’s APIs.

## Why it matters

Some organizations sync profiles into Klaviyo that do not have marketing consent, or are otherwise not contactable and should be suppressed. For example, merchants that sell on third-party marketplaces like eBay, Walmart, or Amazon may push order data into Klaviyo, but with obfuscated email addresses that should be excluded. By creating a segment with all qualifying profiles, this type of suppression can be automated.

You can also use webhooks to automate profile suppressions in a [sunset flow](https://help.klaviyo.com/hc/en-us/articles/360017518492). 

## Important disclaimer
All code samples in this repository show examples of how to accomplish certain use cases. We will use our best effort to maintain these examples, but occasionally some items may break. If you notice a broken code sample, please open an issue to let us know something is broken, or alternatively submit a PR with a proposed fix.

## Introduction

Klaviyo flows has a [webhook flow action](https://help.klaviyo.com/hc/en-us/articles/4534329515931) which allow you to send customizable and dynamic HTTP POST requests with a JSON payload to a destination of your choosing within a Klaviyo flow. The most commonly discussed use cases for webhook actions involve sending data to third-party APIs or also to Klaviyo’s own APIs.

In this example we will use a webhook action to send a request to Klaviyo’s own APIs; however, you can also build your own API endpoint too.

Acme Corp is a (fictional) omni-channel clothing retailer that sells direct to consumer through an online store and various online marketplaces. They have connected an ordering system to Klaviyo, meaning all their order events are successfully syncing into Klaviyo and a Klaviyo profile is being generated for every customer.

It’s working great, except for one thing: this merchant sells through various marketplaces like eBay, Walmart, and Amazon and all order records originating in these marketplaces contain email addresses that are deliberately obfuscated.

[As eBay describes it](https://www.ebay.com/help/policies/member-behavior-policies/membertomember-contact-policy?id=4262):
> In the majority of cases, we don’t share buyers’ personal email addresses. We replace email addresses with aliases for buyers and sellers to hide personal contact information. When you communicate, your email appears like 63ae59ac280fe0fa69@members.ebay.com and is sent through our secure platform.
> 
> -- Ebay

This can create some noisy profile data in the Klaviyo account — e.g., because an obfuscated email alias by design can’t be matched up with the customer’s true email. Additionally, these marketplaces have policies that restrict the types of communications that are permitted, meaning it may not be appropriate to communicate with these email aliases. So, Acme Corp wants to just suppress these profiles from their Klaviyo account.

There are a couple potential ways to achieve this:
1. Acme Corp could alter the integration with their eCommerce backend to avoid syncing these orders into Klaviyo in the first place, but would miss out on important revenue reporting
2. Acme Corp could upload suppressions into Klaviyo manually via CSV files, but that doesn’t scale

By using webhooks, Acme Corp can achieve a fully automated solution.

## Prerequisites

Before you begin, ensure you have a [Klaviyo private API key](https://developers.klaviyo.com/en/docs/authenticate_#private-key-authentication) with write access to profiles and subscriptions. If you would like to automate profile deletion rather than suppression, your private API key will need write access to data-privacy. 

You will also need to set up a segment and flow in Klaviyo, which are described below.

## Instructions

### Step 1: Create a segment in Klaviyo.

The first step is to create a segment in Klaviyo containing profiles that we want to suppress. In this example, we’re going to include any profiles where the email address contains a text string that we only see from aliases originating from Amazon, Walmart, and eBay; i.e., any email address ending with marketplace.amazon.com, relaycwalmart.com, or members.ebay.com.

### Step 2: 

## Version

* SDK type & version number
* API revision

## What you'll learn

* feature1
* feature2

## Limitations

* limitation1
* limitation2

## Klaviyo features + endpoints used

* feature1 : description1
* feature2 : description2

## Installation

* step1
* step2

## Testing

* step1
* step2

## Usage

Example usage here

## FAQ

Q: Question1?

A: Answer1.




