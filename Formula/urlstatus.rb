class Urlstatus < Formula
  desc "URL Status Checker"
  homepage "https://github.com/ericem/two-pow-five/tree/master/urlstatus"
  url "https://github.com/ericem/two-pow-five/raw/master/urlstatus/release/urlstatus-0.1.1.tar.gz"
  sha256 "5a9a713cb4d116ccaaf42921c230ae040f6efff939cb64f99c921fbb2a0d745d"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/urlstatus/release"
    cellar :any
    sha256 "8a039bdba3cd43a71b050eaabe3a1db244fba3f22270f5fc5eda543139ff6b5b" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
