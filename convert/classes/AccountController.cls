public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        System.debug('Changes made');
        return [
            SELECT Name, AnnualRevenue, Industry
            FROM Account
            WITH SECURITY_ENFORCED
            ORDER BY Name
        ];
    }
}