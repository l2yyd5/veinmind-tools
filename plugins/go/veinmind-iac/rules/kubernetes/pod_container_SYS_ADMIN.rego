package brightMirror.kubernetes

import data.common
import future.keywords.in

risks[res]{
        inner := securityContexts[_].capabilities.add
        some val in inner
        upper(val) == "SYS_ADMIN"
        Name:=containers[i].name
        Hints=["UnsafeContainers"]
        Names=[Name]
        Combine:=array.concat(Hints,Names)
        res := common.result({"original":concat(":",Combine), "Path": input[_].Path}, "KN-012")
}