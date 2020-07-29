{
  "class": "ADC",
  "schemaVersion": "3.7.0",
  "id": "David",
  "David": {
    "class": "Tenant",
    "Nginx": {
      "class": "Application",
      "template": "http",
      "serviceMain": {
        "class": "Service_HTTP",
        "virtualPort": 8080,
        "virtualAddresses": [
          "10.0.0.220"
        ],
        "pool": "web_pool",
        "persistenceMethods": [],
        "profileMultiplex": {
          "bigip": "/Common/oneconnect"
         }
      },
      "web_pool": {
        "class": "Pool",
        "monitors": [
          "http"
        ],
        "members": [
          {
            "servicePort": 80,
            "addressDiscovery": "consul",
            "updateInterval": 10,
            "uri": "http://10.0.0.100:8500/v1/catalog/service/david"
          }
        ]
      }
    }
  }
}
