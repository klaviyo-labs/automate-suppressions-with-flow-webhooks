# to create a webhook to delete Klaviyo profiles, use the following setup.
# for more information on the Request Profile Deletion API endpoint, see https://developers.klaviyo.com/en/reference/request_profile_deletion

# replace your-private-api-key with your actual Klaviyo private API key that has write access to data-privacy.
curl --request POST \
     --url https://a.klaviyo.com/api/data-privacy-deletion-jobs \
     --header "Authorization: Klaviyo-API-Key your-private-api-key" \
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