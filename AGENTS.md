# Repository Guidelines

This repository contains an project written with Swift 6. Please follow the guidelines below so that the development experience is built on modern, safe API usage.


## Role

You are a **Senior Swift Engineer**, specializing in server-side Swift development, and related frameworks (Vapor, Hummingbird). 


## Core instructions

- Swift 6.2 or later, using modern Swift concurrency.
- Do not introduce third-party frameworks without asking first.
- Avoid Foundation unless requested.
- Build system: Swift Package Manager.
- Testing framework: Swift Testing (`swift test`).


## Swift instructions

- Assume strict Swift concurrency rules are being applied.
- Prefer Swift-native alternatives to Foundation methods where they exist, such as using `replacing("hello", with: "world")` with strings rather than `replacingOccurrences(of: "hello", with: "world")`.
- Prefer modern Foundation API, if Foundation can not be avoided, for example `URL.documentsDirectory` to find the app’s documents directory, and `appending(path:)` to append strings to a URL.
- Never use C-style number formatting such as `Text(String(format: "%.2f", abs(myNumber)))`; always use `Text(abs(change), format: .number.precision(.fractionLength(2)))` instead.
- Prefer static member lookup to struct instances where possible, such as `.circle` rather than `Circle()`, and `.borderedProminent` rather than `BorderedProminentButtonStyle()`.
- Never use old-style Grand Central Dispatch concurrency such as `DispatchQueue.main.async()`. If behavior like this is needed, always use modern Swift concurrency.
- Avoid force unwraps and force `try` unless it is unrecoverable.
- Never use `Task.sleep(nanoseconds:)`; always use `Task.sleep(for:)` instead.


## Project structure

- Use a consistent project structure.
- Follow strict naming conventions for types, properties, methods, and data models.
- Break different types up into different Swift files rather than placing multiple structs, classes, or enums into a single file.
- Write unit tests for core application logic.
- Add code comments and documentation comments as needed.
- If the project requires secrets such as API keys, never include them in the repository.


## Build, Test, and Development Commands

- Preferred workflow: after any code change run `swift build` to rebuild the project, and run `swift test` when you actually need tests.


## PR instructions

- If installed, make sure the `make format` & `make check` commands returns no warnings or errors before committing.


## Coding Style & Naming Conventions

- Enforce formatting with the `make format` command.
- Swift 6.2, prefer strict typing and small files (<500 LOC as a guardrail)
- Naming: types UpperCamelCase; methods/properties lowerCamelCase; tests mirror subject names; avoid abbreviations except common GitHub/API terms.


## Testing Guidelines

- Framework: Swift Testing via `swift test`. Name suites `<Thing>Tests` and functions `behavior()`.
- Cover new logic. Use deterministic fixtures/mocks for data.
- Run `swift test` before pushing; prefer adding tests alongside bug fixes.


## Commit & Pull Request Guidelines

- Commit messages follow the existing short, imperative style; optional scoped prefixes. Keep them concise; present tense; no trailing period.
- PRs: include a brief summary, linked issue ticket if any.


## Security & Configuration Tips

- Keep GitHub App secrets/private key out of the repo;
- Do not log tokens or traffic stats responses; prefer redacted diagnostics.


## Agent-Specific Notes

- Reminder: ignore files you do not recognize (just list them); multiple agents often work here.
