{ apiVersion = "rbac.authorization.k8s.io/v1"
, kind = "Role"
, metadata =
  { annotations = None (List { mapKey : Text, mapValue : Text })
  , clusterName = None Text
  , creationTimestamp = None Text
  , deletionGracePeriodSeconds = None Natural
  , deletionTimestamp = None Text
  , finalizers = None (List Text)
  , generateName = None Text
  , generation = None Natural
  , labels = Some
    [ { mapKey = "category", mapValue = "rbac" }
    , { mapKey = "rbac-admin", mapValue = "escalated" }
    , { mapKey = "deploy", mapValue = "sourcegraph" }
    ]
  , managedFields =
      None
        ( List
            { apiVersion : Text
            , fieldsType : Optional Text
            , fieldsV1 : Optional (List { mapKey : Text, mapValue : Text })
            , manager : Optional Text
            , operation : Optional Text
            , time : Optional Text
            }
        )
  , name = Some "sourcegraph-frontend"
  , namespace = None Text
  , ownerReferences =
      None
        ( List
            { apiVersion : Text
            , blockOwnerDeletion : Optional Bool
            , controller : Optional Bool
            , kind : Text
            , name : Text
            , uid : Text
            }
        )
  , resourceVersion = None Text
  , selfLink = None Text
  , uid = None Text
  }
, rules = Some
  [ { apiGroups = Some [ "" ]
    , nonResourceURLs = None (List Text)
    , resourceNames = None (List Text)
    , resources = Some [ "endpoints", "services" ]
    , verbs = [ "get", "list", "watch" ]
    }
  ]
}
