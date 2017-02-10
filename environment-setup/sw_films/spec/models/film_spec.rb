describe Movie do
  let(:movie) do
    JSON.parse(
    %q{{"title":"A New Hope","episode_id":4,"opening_crawl":"It is a period of civil war.\r\nRebel spaceships, striking\r\nfrom a hidden base, have won\r\ntheir first victory against\r\nthe evil Galactic Empire.\r\n\r\nDuring the battle, Rebel\r\nspies managed to steal secret\r\nplans to the Empire's\r\nultimate weapon, the DEATH\r\nSTAR, an armored space\r\nstation with enough power\r\nto destroy an entire planet.\r\n\r\nPursued by the Empire's\r\nsinister agents, Princess\r\nLeia races home aboard her\r\nstarship, custodian of the\r\nstolen plans that can save her\r\npeople and restore\r\nfreedom to the galaxy....","director":"George Lucas","producer":"Gary Kurtz, Rick McCallum","release_date":"1977-05-25","characters":["http://swapi.co/api/people/1/","http://swapi.co/api/people/2/","http://swapi.co/api/people/3/","http://swapi.co/api/people/4/","http://swapi.co/api/people/5/","http://swapi.co/api/people/6/","http://swapi.co/api/people/7/","http://swapi.co/api/people/8/","http://swapi.co/api/people/9/","http://swapi.co/api/people/10/","http://swapi.co/api/people/12/","http://swapi.co/api/people/13/","http://swapi.co/api/people/14/","http://swapi.co/api/people/15/","http://swapi.co/api/people/16/","http://swapi.co/api/people/18/","http://swapi.co/api/people/19/","http://swapi.co/api/people/81/"],"planets":["http://swapi.co/api/planets/2/","http://swapi.co/api/planets/3/","http://swapi.co/api/planets/1/"],"starships":["http://swapi.co/api/starships/2/","http://swapi.co/api/starships/3/","http://swapi.co/api/starships/5/","http://swapi.co/api/starships/9/","http://swapi.co/api/starships/10/","http://swapi.co/api/starships/11/","http://swapi.co/api/starships/12/","http://swapi.co/api/starships/13/"],"vehicles":["http://swapi.co/api/vehicles/4/","http://swapi.co/api/vehicles/6/","http://swapi.co/api/vehicles/7/","http://swapi.co/api/vehicles/8/"],"species":["http://swapi.co/api/species/5/","http://swapi.co/api/species/3/","http://swapi.co/api/species/2/","http://swapi.co/api/species/1/","http://swapi.co/api/species/4/"],"created":"2014-12-10T14:23:31.880000Z","edited":"2015-04-11T09:46:52.774897Z","url":"http://swapi.co/api/films/1/"}}
    )
  end
  it "has stuff" do
    a_new_hope = Movie.new_from_api(movie)
    expect(a_new_hope.title).to eq("A New Hope")
    expect(a_new_hope.episode).to eq(4)
    expect(a_new_hope.opening_crawl).to_not be_nil
    expect(a_new_hope.director).to eq("George Lucas")
  end
end
