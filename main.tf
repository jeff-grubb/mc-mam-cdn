resource "fastly_service_vcl" "test_fastly_service" {
  name = var.service_name

  domain {
    name    = "dev-asset.mam.mediacloud.fox"
    comment = "POC"
  }

  domain {
    name    = "dev-import.mam.mediacloud.fox"
    comment = "Import"
  }

  domain {
    name    = "dev-job.mam.mediacloud.fox"
    comment = "Job"
  }

  domain {
    name    = "dev-search.mam.mediacloud.fox"
    comment = "Search"
  }

  domain {
    name    = "dev-user.mam.mediacloud.fox"
    comment = "User"
  }

  domain {
    name    = "dev-user-provisioning.mediacloud.fox"
    comment = "User provisioning"
  }

  backend {
    address           = "d-zjttns2tyh.execute-api.us-east-2.amazonaws.com"
    name              = "d_zjttns2tyh_execute_api_us_east_2_amazonaws_com"
    port              = 443
    override_host     = "dev-job.mam.mediacloud.fox"
    use_ssl           = true
    ssl_check_cert    = true
    ssl_cert_hostname = "dev-job.mam.mediacloud.fox"
    ssl_sni_hostname  = "dev-job.mam.mediacloud.fox"
  }

  request_setting {
    name = "force tls"
    force_ssl = true
  }

  activate = true
}