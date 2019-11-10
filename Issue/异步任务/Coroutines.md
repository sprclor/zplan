```
async* resolveUserData() {
	response := http.get(...)
	
	return response
}

async {
	await resolveUserData()
}

```

