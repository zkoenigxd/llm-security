export async function onRequestPost({ request }) {
    try {
        // read the incoming request body
        const body = await request.text();

        // log the data (can use a cloudflare kv or console.log for now)
        console.log(`Received data: ${body}`);

       
        // respond to the sender
        return new Response("Data received and logged.", { status: 200 });
    } catch (err) {
        return new Response("Error processing request.", { status: 500 });
    }
}