
require "net/http"
require "uri"

url = URI.parse("http://youthvoices.adobe.com/awards/finalists/5351d45b8d53621e5800034d/public_vote?read_only=false")



req = Net::HTTP::Get.new(url.path)

cnt = 0

while (true)

	ip_address = rand(60..64).to_s + "." + rand(0..200).to_s + "." + rand(0..200).to_s + "." + rand(0..200).to_s

    req.add_field("X-Forwarded-For", ip_address)

    res = Net::HTTP.new(url.host, url.port).start do |http|
   		 http.request(req)
    end
    cnt += 1

    puts "IP ADDRESS : " + ip_address + " COUNT: " + cnt.to_s + " RESPONSE: " + req.body.to_s
    sleep(rand(0.5 .. 120))
end


