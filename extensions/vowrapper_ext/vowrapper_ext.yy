{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "vowrapper_ext",
  "extensionVersion": "1.0.0",
  "copyToTargets": 194,
  "androidProps": false,
  "iosProps": false,
  "tvosProps": false,
  "html5Props": false,
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": -1,
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2023-11-05T15:51:12.678923+05:00",
  "license": "",
  "description": "",
  "helpfile": "",
  "installdir": "",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"vorbiswrapper.dll","origname":"","init":"","final":"","kind":1,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"vo_decode","externalName":"","kind":1,"help":"vo_decode(full_file_path)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"vo_is_available","externalName":"","kind":1,"help":"vo_is_available()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"vo_free","externalName":"","kind":1,"help":"vo_free()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"vo_get_data_length","externalName":"","kind":1,"help":"vo_get_data_length()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"vo_get_sample_rate","externalName":"","kind":1,"help":"vo_get_sample_rate()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"vo_get_channels","externalName":"","kind":1,"help":"vo_get_channels()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"vo_get_data","externalName":"","kind":1,"help":"vo_get_data(buffer_address,buffer_size)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
          ],"documentation":"",},
      ],"constants":[
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"vo_error_open","value":"-1","hidden":false,},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"vo_error_memory","value":"-2","hidden":false,},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"vo_error_unknown","value":"0","hidden":false,},
      ],"ProxyFiles":[
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"vorbiswrapper_x64.dll","TargetMask":6,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"libvorbiswrapper.so","TargetMask":7,},
      ],"copyToTargets":194,"usesRunnerInterface":false,"order":[],},
  ],
  "HTML5CodeInjection": "",
  "classname": "",
  "tvosclassname": null,
  "tvosdelegatename": null,
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "",
  "androidcodeinjection": "",
  "hasConvertedCodeInjection": false,
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
}