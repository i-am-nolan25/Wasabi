//
//  MarketDataModel.swift
//  Crypto Trading Simulator
//
//  Created by Naing Oo Lwin on 4/23/24.
//

import Foundation

// JSON data
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 
 {
 "data": {
 "active_cryptocurrencies": 11043,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 935,
 "total_market_cap": {
 "btc": 39311238.70801106,
 "eth": 730913027.987056,
 "ltc": 20943605303.411953,
 "bch": 6267233897.123054,
 "bnb": 5508853427.748916,
 "eos": 2090186982803.2092,
 "xrp": 2410305377094.8433,
 "xlm": 12372339455816.105,
 "link": 101962795162.55469,
 "dot": 282644351039.92664,
 "yfi": 180828532.41367745,
 "usd": 1453952461387.104,
 "aed": 5340091139707.184,
 "ars": 517670323185878.9,
 "aud": 2215317575697.3867,
 "bdt": 160942111182451.9,
 "bhd": 548118268656.0182,
 "bmd": 1453952461387.104,
 "brl": 7106774236014.031,
 "cad": 1989813910793.6296,
 "chf": 1282860059445.8386,
 "clp": 1275625191997976,
 "cny": 10346180319984.521,
 "czk": 32590344421991.96,
 "dkk": 9909061144088.174,
 "eur": 1329258590393.626,
 "gbp": 1159695746441.7373,
 "hkd": 11334795296104.674,
 "huf": 505935472870025,
 "idr": 22506629317631704,
 "ils": 5401708191068.281,
 "inr": 121065750718958.61,
 "jpy": 214744578238149.2,
 "krw": 1877764964034114.2,
 "kwd": 448035450976.4369,
 "lkr": 474913088229822.1,
 "mmk": 3051761097712586,
 "mxn": 24992670762487.336,
 "myr": 6765240802834.213,
 "ngn": 1194421947029505.8,
 "nok": 15483005997684.854,
 "nzd": 2398932870188.58,
 "php": 80461732121067.17,
 "pkr": 414902475502379.44,
 "pln": 5815860733884.575,
 "rub": 128754774757659.7,
 "sar": 5453285700683.53,
 "sek": 15140972404858.293,
 "sgd": 1943877736728.5676,
 "thb": 51026461632380.62,
 "try": 41841410655964.73,
 "twd": 45574865424457.13,
 "uah": 52216148056243.37,
 "vef": 145584259958.69098,
 "vnd": 35157844340085124,
 "zar": 26861873500799.06,
 "xdr": 1091589705245.4445,
 "xag": 60773555380.17501,
 "xau": 725493199.1829369,
 "bits": 39311238708011.06,
 "sats": 3931123870801106
 },
 "total_volume": {
 "btc": 2028525.1153687667,
 "eth": 37716324.46982215,
 "ltc": 1080724768.8097882,
 "bch": 323399663.35412914,
 "bnb": 284265973.3537403,
 "eos": 107857114906.15341,
 "xrp": 124375754970.77618,
 "xlm": 638433235553.9939,
 "link": 5261449336.581027,
 "dot": 14584917281.804115,
 "yfi": 9331052.178258331,
 "usd": 75026358400.52878,
 "aed": 275557559397.0468,
 "ars": 26712647237178.64,
 "aud": 114314061029.68262,
 "bdt": 8304879860922.45,
 "bhd": 28283811721.62338,
 "bmd": 75026358400.52878,
 "brl": 366721337225.9449,
 "cad": 102677697920.83574,
 "chf": 66197706702.10498,
 "clp": 65824375542703.94,
 "cny": 533880063742.32416,
 "czk": 1681715823547.8538,
 "dkk": 511323989300.072,
 "eur": 68591947851.38277,
 "gbp": 59842223881.99621,
 "hkd": 584894236136.7633,
 "huf": 26107109498528.047,
 "idr": 1161379400232611.8,
 "ils": 278737101439.7014,
 "inr": 6247193525711.395,
 "jpy": 11081176392861.586,
 "krw": 96895786433880.33,
 "kwd": 23119372341.122982,
 "lkr": 24506303000195.61,
 "mmk": 157475934014610.12,
 "mxn": 1289663261908.7798,
 "myr": 349097645637.6613,
 "ngn": 61634153426034.375,
 "nok": 798948788182.2596,
 "nzd": 123788914753.0102,
 "php": 4151958823937.974,
 "pkr": 21409655855330.17,
 "pln": 300108059524.65967,
 "rub": 6643959918422.414,
 "sar": 281398586477.602,
 "sek": 781299287526.685,
 "sgd": 100307315153.52954,
 "thb": 2633050048066.5674,
 "try": 2159086184195.621,
 "twd": 2351738642217.423,
 "uah": 2694439840643.2905,
 "vef": 7512389266.6449585,
 "vnd": 1814203077542673,
 "zar": 1386117223294.858,
 "xdr": 56327839201.79874,
 "xag": 3136016251.0935283,
 "xau": 37436652.314695835,
 "bits": 2028525115368.7666,
 "sats": 202852511536876.66
 },
 "market_cap_percentage": {
 "btc": 49.7283668550903,
 "eth": 16.505354131338425,
 "usdt": 6.098036368074075,
 "bnb": 2.725483744887909,
 "xrp": 2.2405651303075396,
 "usdc": 1.6867490457984604,
 "sol": 1.6014919111409387,
 "steth": 1.2348315195713546,
 "ada": 0.8985873315893983,
 "doge": 0.7395647444121647
 },
 "market_cap_change_percentage_24h_usd": -1.267124563963752,
 "updated_at": 1700582387
 }
 }
 
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        //        if let item = totalMarketCap.first(where: { (key, value) in
        //            return key == "usd"
        //        }) {
        //            return "\(item.value)"
        //        }
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
