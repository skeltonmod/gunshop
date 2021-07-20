<?php

return [

    'tables' => [
        'fr_pivot' => 'friends',
        'fr_groups_pivot' => 'user_friend_group'
    ],

    'groups' => [
        'acquaintances' => 0,
        'close_friends' => 1,
        'family' => 2
    ]

];
