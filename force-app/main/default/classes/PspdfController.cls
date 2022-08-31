public with sharing class PspdfController {
    @AuraEnabled(cacheable = true)
    public static string getVisualforceOrigin() {
        string visualOrigin = '';
        string baseUrl = URL.getOrgDomainUrl().toExternalForm();
        visualOrigin = baseUrl.split('.my.')[0] + '--c.' + 'visualforce.com';
        return visualOrigin;
    }
}