//Tweak.xm

#include <Foundation/Foundation.h>


%hook ADCV4VCCurrency

- (int)reward_amount {

 NSDictionary *sex = [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithFormat:@"/User/Library/Preferences/pwner.plist"]];
return [[sex objectForKey:@"kNum"] intValue]; //Needs a new pref bundle

}

%end

%hook BurstlyCurrencyManager

- (void)balanceUpdatedForCurrency:(id)currency withAmount:(int)amount {


}

- (int)currentServerBalanceForCurrency:(id)currency {

NSDictionary *sex = [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithFormat:@"/User/Library/Preferences/pwner.plist"]];
return [[sex objectForKey:@"kNum"] intValue]; //Needs a new pref bundle

}

%end

%hook BurstlyCurrency

- (int)currentBalanceForCurrency:(id)currency {

NSDictionary *sex = [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithFormat:@"/User/Library/Preferences/pwner.plist"]];
return [[sex objectForKey:@"kNum"] intValue]; //Needs a new pref bundle

}

%end
