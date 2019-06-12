
/* eslint-disable */

"use strict";
/*
 * 
filters
listening assessment for DLPT
speaking assessment for DLPT
reading assessment for DLPT
DLAB
Occupation Type Primary
Occupation Type Secondary
Occupation Type Tertiary
Service/Agency
Language
Location
IMR status

Each "card" in Zegami should have the person's 
full name, 
service/agency, 
language, 
score for DLPT, 
score for DLAB (if null ok), 
Occ Type Primary, 
secondary, 
tertiary, 
current location (unit), 
IMR
*/


function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; var ownKeys = Object.keys(source); if (typeof Object.getOwnPropertySymbols === 'function') { ownKeys = ownKeys.concat(Object.getOwnPropertySymbols(source).filter(function (sym) { return Object.getOwnPropertyDescriptor(source, sym).enumerable; })); } ownKeys.forEach(function (key) { _defineProperty(target, key, source[key]); }); } return target; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

function runReport(baseUrl, isDev) {
    var defaultClientConfig = {
        "isFilterVisible": true,
        "isMetadataVisible": true,
        "isSearchable": true,
        "isVisible": true   
    };
    var NonFilterableClientConfig = {
        "isFilterVisible": false,
        "isMetadataVisible": true,
        "isSearchable": true,
        "isVisible": true
    };
    var invisibleClientConfig = {
        "isFilterVisible": false,
        "isMetadataVisible": false,
        "isSearchable": false,
        "isVisible": false
    };

    var defaultProperties = {
        "description": "",
        "type": "string"
    };
    var datetimeProperties = {
        "description": "",
        "type": "datetime"
    };
    var boolProperties = {
        "description": "",
        "type": "bool"
    };
    var intProperties = {
        "description": "",
        "type": "int"
    };

    var topfields = [];
    var fields = [_objectSpread({}, defaultProperties, {
        "title": "First Name",
        "name": "firstName",
        "zegami:clientConfig": _objectSpread({}, NonFilterableClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "Middle Name",
        "name": "middleName",
        "zegami:clientConfig": _objectSpread({}, NonFilterableClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "Last Name",
        "name": "lastName",
        "zegami:clientConfig": _objectSpread({}, NonFilterableClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "Language",
        "name": "languageDesc",
        "zegami:clientConfig": _objectSpread({}, defaultClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "Language Code",
        "name": "languageCode",
        "zegami:clientConfig": _objectSpread({}, NonFilterableClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "Gender",
        "name": "gender",
        "zegami:clientConfig": _objectSpread({}, NonFilterableClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "DLPT Listening Code",
        "name": "languageListeningCode",
        "zegami:clientConfig": _objectSpread({}, defaultClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "DLPT Reading Code",
        "name": "languageReadingCode",
        "zegami:clientConfig": _objectSpread({}, defaultClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "DLPT Speaking",
        "name": "languageSpeakingCode",
        "zegami:clientConfig": _objectSpread({}, defaultClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "Medical Readiness Status",
        "name": "medicalReadyStatusName",
        "zegami:clientConfig": _objectSpread({}, defaultClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "DLAB Score",
        "name": "defenseLanguageAptitudeBatteryScore",
        "zegami:clientConfig": _objectSpread({}, defaultClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "Service",
        "name": "serviceName",
        "zegami:clientConfig": _objectSpread({}, defaultClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "Location",
        "name": "locationDescription",
        "zegami:clientConfig": _objectSpread({}, defaultClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "Org Name",
        "name": "orgName",
        "zegami:clientConfig": _objectSpread({}, NonFilterableClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "UIC",
        "name": "unitUic",
        "zegami:clientConfig": _objectSpread({}, defaultClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "ServiceIconUrl",
        "name": "serviceIconUrl",
        "zegami:clientConfig": _objectSpread({}, invisibleClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "ServiceCode",
        "name": "serviceCode",
        "zegami:clientConfig": _objectSpread({}, invisibleClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "Primary Occupation",
        "name": "dutyMOS",
        "zegami:clientConfig": _objectSpread({}, defaultClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "Secondary Occupation",
        "name": "secondaryMOS",
        "zegami:clientConfig": _objectSpread({}, defaultClientConfig)
    }), _objectSpread({}, defaultProperties, {
        "title": "Tertiary Occupation",
        "name": "tertiaryMOS",
        "zegami:clientConfig": _objectSpread({}, defaultClientConfig)
    })];
    fields = fields.sort(function (a, b) {
        return a.title > b.title ? 1 : -1;
    });
    fields.forEach(function (item, index) {
        item["zegami:clientConfig"].order = index;
    });
    var queryString = "?isDev=" + (isDev ? "true" : "false");
    var loc = window.location;
    var baseUrl = loc.protocol + "//" + loc.hostname + (loc.port? ":"+loc.port : "") 
    var config = {
        "name": "Personnel Language",
        "description": "",
        "disclaimer": "",
        "collectionThumbnailUrl": "",
        "isEditable": false,
        "dataLoader": "JSON",
        "dataUrl": baseUrl+"/zegami/reports/personnel-language/data.json",
        "collectionType": "dynamic",
        "zegXsltUrl": baseUrl+"/zegami/reports/personnel-language/zeg.xslt",
        "displayInfoBox": false,
        "mapTileSources": [],
        "toolbarItems": [{
            "id": "TOOLBAR_ITEM_ACTION_SNAPSHOTS",
            "enabled": false
        }, {
            "id": "TOOLBAR_ITEM_ACTION_HELP",
            "enabled": false
        }, {
            "id": "TOOLBAR_ITEM_ACTION_SETTINGS",
            "enabled": false
        }],
        "loaderOptions": {
            "zegami:name": "Company",
            "zegami:description": null,
            "fields": fields
        }
    };
    Zegami.start(config);
}