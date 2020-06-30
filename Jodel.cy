function up10vv(){
    vee = choose(objc_getClass("Jodel.JDLFeedCellVoteView"))
    for (i = 0; i <= vee.length; i++){ [vee[i] upvoteTap:YES]; }
    }
