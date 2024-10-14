class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.3.5"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.3.5.tar.gz"
    sha256 "8aa89882d3c99a480e2e49a8850898ba1dc710b148df3f75488df1fd91dbd3ef"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.3.5' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
