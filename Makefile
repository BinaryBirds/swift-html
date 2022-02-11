test:
	swift test --enable-test-discovery --parallel

docs:
	jazzy \
  --clean \
  --author "Tibor Bödecs" \
  --author_url https://twitter.com/tiborbodecs/ \
  --module-version 1.6.0 \
  --module SwiftHtml \
  --output docs/
