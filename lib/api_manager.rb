#name space all classes in this module. in example: hogwarts_intro::CLI. Basically, pretend like i am writing this
# inside of howarts_intro.


class HogwartsIntro::APIManager

    BASE_URL = "https://www.potterapi.com/v1/"


    def self.get_house
        url = BASE_URL + "houses?key=$2a$10$XrLOe6GDU1jqPs5WmZVTaOXajAT08n.NDFgKMOFy.65H4jmRCfghu"
        res = HTTParty.get(url)
        data = JSON.parse(res.body, symbolize_names: true)
        HogwartsIntro::House.create_from_api(data)
    end

end
