# to create a webhook to delete Klaviyo profiles, use the following setup.
# for more information on the Request Profile Deletion API endpoint, see https://developers.klaviyo.com/en/reference/request_profile_deletion

PRIVATE_API_KEY="your_private_api_key_here" # Replace with your actual private API key

curl --request POST \
     --url https://a.klaviyo.com/api/data-privacy-deletion-jobs \
     --header "Authorization: Klaviyo-API-Key $PRIVATE_API_KEY" \
     --header "accept: application/vnd.api+json" \
     --header "content-type: application/vnd.api+json" \
     --header "revision: 2025-04-15" \
     --data '
{
  "data": {
    "type": "data-privacy-deletion-job",
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