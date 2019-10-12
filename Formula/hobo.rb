class Hobo < Formula
  desc "URL Status Checker"
  homepage "https://github.com/ericem/two-pow-five/tree/master/hobo"
  url "https://github.com/ericem/two-pow-five/raw/master/hobo/release/hobo-0.1.0.tar.gz"
  sha256 "4540eaf62ca0579df669dd2821b0466ba94edec18ba784f4ff56a9316ffd38a7"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/hobo/release"
    cellar :any
    sha256 "5bbcf7aa4bd5a09293794de6dfdfdd1286db87a0c649cb42cd144477c289dd0a" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
