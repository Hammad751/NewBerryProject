// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;


contract AA{
    uint256[100] randomBoxProbability = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                                        ,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
                                        ,3,3,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,5,5,5,6,6,7];



function setOdds(uint256 _cash, uint256 _common, uint256 _uncommon, uint256 _rare, uint256 _epic
    , uint256 _legendary, uint256 _mythic) 
    public 
    {
        uint256 c;      // cash Odd
        uint256 cmn;    // common
        uint256 ucmn;   // uncommon
        uint256 rare_;  // rare
        uint256 epc;    // epic
        uint256 legand; // legandary
        uint256 myth;   // mythic

        for(c = 1; c<= _cash; c++){
            randomBoxProbability[c] = 1;
        }
        for(cmn = _cash+1; cmn<= _cash+_common; cmn++){
            randomBoxProbability[cmn] = 2;
        }
        for(ucmn = _cash+_common+1; ucmn<= _cash+_common+_uncommon; ucmn++){
            randomBoxProbability[ucmn] = 3;
        }
        for(rare_ = _cash+_common+_uncommon+1; rare_ <= _cash+_common+_uncommon+_rare; rare_++){
            randomBoxProbability[rare_] = 4;
        }
        for(c = 1; c<= _cash; c++){
            randomBoxProbability[c] = 5;
        }
        for(c = 1; c<= _cash; c++){
            randomBoxProbability[c] = 6;
        }
        for(c = 1; c<= _cash; c++){
            randomBoxProbability[c] = 7;
        }

    }
}
