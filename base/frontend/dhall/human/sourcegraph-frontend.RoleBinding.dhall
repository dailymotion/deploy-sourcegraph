let kubernetes =
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/master/1.17/package.dhall sha256:7150ac4309a091740321a3a3582e7695ee4b81732ce8f1ed1691c1c52791daa1

in  kubernetes.RoleBinding::{
    , metadata = kubernetes.ObjectMeta::{
      , labels = Some
        [ { mapKey = "category", mapValue = "rbac" }
        , { mapKey = "rbac-admin", mapValue = "escalated" }
        , { mapKey = "deploy", mapValue = "sourcegraph" }
        ]
      , name = Some "sourcegraph-frontend"
      }
    , roleRef = kubernetes.RoleRef::{
      , apiGroup = ""
      , kind = "Role"
      , name = "sourcegraph-frontend"
      }
    , subjects = Some
      [ kubernetes.Subject::{
        , kind = "ServiceAccount"
        , name = "sourcegraph-frontend"
        }
      ]
    }
