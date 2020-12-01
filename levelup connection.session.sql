SELECT * FROM levelupapi_gametype;
SELECT * FROM auth_user;
SELECT * FROM authtoken_token;
SELECT * FROM levelupapi_gamer;
SELECT * FROM levelupapi_game;
SELECT * FROM levelupapi_event;


{
    1: {
        "organizer_id": 1,
        "full_name": "Molly Ringwald",
        "events": [
            {
                "id": 5,
                "date": "2020-12-23",
                "time": "19:00",
                "game_name": "Fortress America"
            }
        ]
    }
};
SELECT
    gr.id as gamer_id,
    u.id as user_id,
    e.id,
    e.day,
    e.time,
    g.title
FROM
    levelupapi_event e
JOIN
    levelupapi_gamer gr ON e.gamer_id = gr.id
JOIN 
    auth_user u on u.id = gr.user_id
JOIN    
    levelupapi_game g on g.id = e.game_id
    ;