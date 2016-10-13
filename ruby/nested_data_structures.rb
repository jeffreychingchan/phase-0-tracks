
nfl_team={
	
    "49ers" => {
        "qb" => 'C. Kaepernick',
        "wr" => {
            wr1: 'T. Smith',
            wr2: 'J. Kerley'
        },
        "rb" => [
            'C. Hyde', 
            'S. Draughn'
        ]
    },
    
    "Raiders" => {
        "qb" => 'D. Carr',
        "wr" => {
            wr1: 'A. Cooper',
            wr2: 'M. Crabtree'
        },
        "rb" => [
            'L. Murray', 
            'D. Washington'
        ]
    }
}






nfl_team["Raiders"]["wr"]
nfl_team["Raiders"]["qb"]
nfl_team["49ers"]["rb"][1]
nfl_team["49ers"]["rb"].push("M. Davis")