class Swiftlint < Formula
  desc "Experimental tool to enforce Swift style and conventions"
  homepage "https://github.com/metova/SwiftLint"
  url "https://github.com/metova/SwiftLint.git", :tag => "0.9.2m2", :revision => "c034dda4854f3fb8852616a4b9adff20a29606e7"
  head "https://github.com/metova/SwiftLint.git"

  depends_on :xcode => ["7.1", :build]

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}", "TEMPORARY_FOLDER=#{buildpath}/SwiftLint.dst"
  end

  test do
    (testpath/"Test.swift").write "import Foundation\n"
    system "#{bin}/swiftlint"
  end
end
