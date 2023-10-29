//
//  DataManager.swift
//  TableViewApp
//
//  Created by Anastasiya Omak on 27/10/2023.
//

import Foundation


class DataManager {
    
    static let shared = DataManager()
    
    var track = [
        "Okean Elzy",
        "Ceza",
        "Eminem",
        "The Rasmus",
        "The Rolling Stones",
        "Seksendört",
        "Shura",
        "The Beatles",
        "Argy",
        "Mose, Sam Garret, Mollie Mendoza",
        "Coolio, L.V.",
        "Madcon",
        "HaBanot Nechama",
        "James Warren",
        "GIMS",
    ]
    
    var album = [
        "Без Бою",
        "Suspus",
        "The Real Slim Shady",
        "Livin’in a World Without You",
        "Paint In, Black",
        "Kendime Yalan Söyledim",
        "Ты не верь слезам",
        "For No One",
        "Tataki",
        "Om Ganesha",
        "Gangsta’s Paradise",
        "Beggin",
        "So Far",
        "Everybody’s got to learn sometime",
        "Tout Donner",
    ]
    
    var cover = [
        "Okean Elzy - Без бою",
        "Ceza - Suspus",
        "Eminem - The Real Slim Shady",
        "The Rasmus - Livin’in a World Without You",
        "The Rolling Stones - Paint In, Black",
        "Seksendört - Kendime Yalan Söyledim",
        "Shura - Ты не верь слезам",
        "The Beatles - For No One",
        "Argy - Tataki",
        "Mose, Sam Garret, Mollie Mendoza - Om Ganesha",
        "Coolio, L.V. - Gangsta’s Paradise",
        "Madcon - Beggin",
        "HaBanot Nechama - So Far",
        "James Warren - Everybody’s got to learn sometime",
        "GIMS - Tout Donner",
    ]
    
    
    
    #warning("Home task")
    var movieTitles = [
        "The Matrix",
        "Joker",
        "Avatar: The Last Airbender",
        "Eat Pray Love",
        "Eternal Sunshine of the Spotless Mind",
        "Seven Pounds",
        "WALL·E",
        "The Emperor's New Groove",
        "Forrest Gump",
        "The Lord of the Rings",
        "The Shawshank Redemption"
    ]
    
    var imageNames = [
        "The Matrix",
        "Joker",
        "Avatar. The Last Airbender",
        "Eat Pray Love",
        "Eternal Sunshine of the Spotless Mind",
        "Seven Pounds",
        "WALL·E",
        "The Emperor's New Groove",
        "Forrest Gump",
        "The Lord of the Rings- The Return of the King (2003) - Drama",
        "The Shawshank Redemption (1994) - Drama"
    ]
    
    var movieGenres = [
        "Action",
        "Crime",
        "Adventure",
        "Drama",
        "Drama",
        "Drama",
        "Adventure",
        "Adventure",
        "Drama",
        "Drama",
        "Drama"
    ]
    
    var releaseYears = [
        1999,
        2019,
        2005,
        2010,
        2004,
        2008,
        2008,
        2000,
        1994,
        2003,
        1994
    ]
    
    var descriptions = [
        "When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.",
        "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.",
        "In a war-torn world of elemental magic, a young boy reawakens to undertake a dangerous mystic quest to fulfill his destiny as the Avatar, and bring peace to the world.",
        "A married woman realizes how unhappy her marriage really is, and that her life needs to go in a different direction. After a painful divorce, she takes off on a round-the-world journey to find herself",
        "When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories for ever.",
        "A man with a fateful secret embarks on an extraordinary journey of redemption by forever changing the lives of seven strangers.",
        "In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.",
        "Emperor Kuzco is turned into a llama by his ex-administrator Yzma, and must now regain his throne with the help of Pacha, the gentle llama herder.",
        "The history of the United States from the 1950s to the '70s unfolds from the perspective of an Alabama man with an IQ of 75, who yearns to be reunited with his childhood sweetheart.",
        "Aragorn is revealed as the heir to the ancient kings as he, Gandalf and the other members of the broken fellowship struggle to save Gondor from Sauron's forces. Meanwhile, Frodo and Sam take the ring closer to the heart of Mordor, the dark lord's realm.",
        "Framed in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope."
    ]
    
    var movieTrailerUrls = [
        "https://www.imdb.com/video/vi1032782617/?playlistId=tt0133093&ref_=tt_ov_vi",
        "https://www.imdb.com/video/vi1723318041/?playlistId=tt7286456&ref_=tt_ov_vi",
        "https://www.imdb.com/video/vi4010411801/?playlistId=tt0417299&ref_=tt_pr_ov_vi",
        "https://www.imdb.com/video/vi2996176409/?playlistId=tt0879870&ref_=tt_ov_vi",
        "https://www.imdb.com/video/vi2292515097/?playlistId=tt0338013&ref_=tt_pr_ov_vi",
        "https://www.imdb.com/video/vi2170028057/?playlistId=tt0814314&ref_=tt_pr_ov_vi",
        "https://www.imdb.com/video/vi2192703769/?playlistId=tt0910970&ref_=tt_ov_vi",
        "https://www.imdb.com/video/vi1071251737/?playlistId=tt0120917&ref_=tt_ov_vi",
        "https://www.imdb.com/video/vi3567517977/?playlistId=tt0109830&ref_=tt_ov_vi",
        "https://www.imdb.com/video/vi684573465/?playlistId=tt0120737&ref_=tt_pr_ov_vi",
        "https://www.imdb.com/video/vi3877612057/?playlistId=tt0111161&ref_=tt_pr_ov_vi"
    ]
    var movieStars = [
        "8.7 / 10",
        "8.4 / 10",
        "9.3 / 10",
        "5.8 / 10",
        "8.3 / 10",
        "7.6 / 10",
        "8.4 / 10",
        "7.4 / 10",
        "8.8 / 10",
        "9.0 / 10",
        "9.3 / 10"
    ]
    
}
