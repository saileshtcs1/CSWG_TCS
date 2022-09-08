module "gcp" {
  source = "../../functions/gcp.sentinel"
}

module "tfplan" {
  source = "../../functions/tfplan.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-pass.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}