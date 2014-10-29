//Tweak.xm

#include <Foundation/Foundation.h>

NSDictionary *sex = [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithFormat:@"/User/Library/Preferences/pwner.plist"]];
int val = [[sex objectForKey:@"kNum"] intValue]; 

%hook ADCV4VCCurrency

- (int)reward_amount {

return val; //Needs a new pref bundle

}

%end

%hook BurstlyCurrencyManager

- (void)balanceUpdatedForCurrency:(id)currency withAmount:(int)amount {


}

- (int)currentServerBalanceForCurrency:(id)currency {

return val; //Needs a new pref bundle

}

%end

%hook BurstlyCurrency

- (int)currentBalanceForCurrency:(id)currency {

return val; //Needs a new pref bundle

}

%end
