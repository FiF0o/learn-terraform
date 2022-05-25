/**
* https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-functions.html
*
*
* Please note that it is pseudo code and will need to be optimised and tested
* POC was made on the redirect
*
******************************************************************
*                    Example from console                        *
******************************************************************
* dev-3 env
* cloudfront viewer request event trigger
* Cloudfront function attached to Cloudfront distribution: 
* default cache behavior
* https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDefaultTTL
* https://aws.amazon.com/blogs/aws/introducing-cloudfront-functions-run-your-code-at-the-edge-with-low-latency-at-any-scale/
*
*/

// https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/example-function-redirect-url.html
// CF functions support ES5.1
function handler(event) {
  var request = event.request;
  var uri = request.uri;
  // user requests refactoring path
  var isRefactoring = /(refactoring)/.test(uri);

  if (isRefactoring) {
    var response;
    return response = {
      statusCode: 301,
      statusDescription: "Permanent redirect",
      headers: {
        // redirects
        location: { value: "https://google.co.uk" }
      }
    };
  }

  return request;
}
