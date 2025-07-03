# to create a webhook to suppress Klaviyo profiles, use the following setup.
# for more information on the Bulk Suppress Profile API endpoint, see https://developers.klaviyo.com/en/reference/bulk_suppress_profiles

PRIVATE_API_KEY="your_private_api_key_here" # Replace with your actual private API key

curl --request POST \
     --url https://a.klaviyo.com/api/profile-suppression-bulk-create-jobs \
     --header "Authorization: Klaviyo-API-Key $PRIVATE_API_KEY" \
     --header "accept: application/vnd.api+json" \
     --header "content-type: application/vnd.api+json" \
     --header "revision: 2025-04-15" \
     --data '
{
  "data": {
    "type": "profile-suppression-bulk-create-job",
    "attributes": {
      "profile": {
        "data": {
          "type": "profile",
          "attributes": {
            "email": "{{ profile.email }}"
          }
        }
      }
    }
  }
}
'
